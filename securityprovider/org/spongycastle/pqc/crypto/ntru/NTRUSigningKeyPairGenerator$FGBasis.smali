.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
.super Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
.source "NTRUSigningKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FGBasis"
.end annotation


# instance fields
.field public F:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public G:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field final synthetic this$0:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 0
    .param p1, "this$0"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
    .param p2, "f"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .param p3, "fPrime"    # Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;
    .param p4, "h"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p5, "F"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p6, "G"    # Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;
    .param p7, "params"    # Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .prologue
    .line 332
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->this$0:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;

    .line 333
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    .line 334
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 335
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 336
    return-void
.end method


# virtual methods
.method isNormOk()Z
    .locals 6

    .prologue
    .line 344
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-wide v0, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    .line 345
    .local v0, "keyNormBoundSq":D
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->params:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v2, v3, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->q:I

    .line 346
    .local v2, "q":I
    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v3, v4, v0

    if-gez v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v3, v4, v0

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
