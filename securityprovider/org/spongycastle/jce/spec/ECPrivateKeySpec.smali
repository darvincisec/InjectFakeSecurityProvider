.class public Lorg/spongycastle/jce/spec/ECPrivateKeySpec;
.super Lorg/spongycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 0
    .param p1, "d"    # Ljava/math/BigInteger;
    .param p2, "spec"    # Lorg/spongycastle/jce/spec/ECParameterSpec;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Lorg/spongycastle/jce/spec/ECKeySpec;-><init>(Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    .line 26
    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
