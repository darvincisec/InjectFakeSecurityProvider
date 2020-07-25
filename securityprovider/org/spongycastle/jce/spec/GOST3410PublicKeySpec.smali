.class public Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;
.super Ljava/lang/Object;
.source "GOST3410PublicKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private a:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "p"    # Ljava/math/BigInteger;
    .param p3, "q"    # Ljava/math/BigInteger;
    .param p4, "a"    # Ljava/math/BigInteger;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->y:Ljava/math/BigInteger;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->p:Ljava/math/BigInteger;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->q:Ljava/math/BigInteger;

    .line 36
    iput-object p4, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->a:Ljava/math/BigInteger;

    .line 37
    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->a:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->y:Ljava/math/BigInteger;

    return-object v0
.end method
