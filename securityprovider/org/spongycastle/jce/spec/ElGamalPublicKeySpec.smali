.class public Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;
.super Lorg/spongycastle/jce/spec/ElGamalKeySpec;
.source "ElGamalPublicKeySpec.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/jce/spec/ElGamalParameterSpec;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .prologue
    .line 19
    invoke-direct {p0, p2}, Lorg/spongycastle/jce/spec/ElGamalKeySpec;-><init>(Lorg/spongycastle/jce/spec/ElGamalParameterSpec;)V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    .line 22
    return-void
.end method


# virtual methods
.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ElGamalPublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
