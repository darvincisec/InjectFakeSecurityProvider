.class public Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;
.super Ljava/lang/Object;
.source "CramerShoupParametersGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;
    }
.end annotation


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private certainty:I

.field private random:Ljava/security/SecureRandom;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->ONE:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public generateParameters()Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .locals 7

    .prologue
    .line 47
    iget v4, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->size:I

    iget v5, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->certainty:I

    iget-object v6, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v4, v5, v6}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 50
    .local v3, "safePrimes":[Ljava/math/BigInteger;
    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 51
    .local v2, "q":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v4}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    .line 52
    .local v0, "g1":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v4}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 53
    .local v1, "g2":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v4}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v4, Lorg/spongycastle/crypto/params/CramerShoupParameters;

    new-instance v5, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v5}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v4, v2, v0, v1, v5}, Lorg/spongycastle/crypto/params/CramerShoupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)V

    return-object v4
.end method

.method public generateParameters(Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .locals 5
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 63
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 64
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 67
    .local v0, "g1":Ljava/math/BigInteger;
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 68
    .local v1, "g2":Ljava/math/BigInteger;
    :goto_0
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v3}, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator$ParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v3, Lorg/spongycastle/crypto/params/CramerShoupParameters;

    new-instance v4, Lorg/spongycastle/crypto/digests/SHA256Digest;

    invoke-direct {v4}, Lorg/spongycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v3, v2, v0, v1, v4}, Lorg/spongycastle/crypto/params/CramerShoupParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;)V

    return-object v3
.end method

.method public init(IILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 30
    iput p1, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->size:I

    .line 31
    iput p2, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->certainty:I

    .line 32
    iput-object p3, p0, Lorg/spongycastle/crypto/generators/CramerShoupParametersGenerator;->random:Ljava/security/SecureRandom;

    .line 33
    return-void
.end method
