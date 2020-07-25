.class public Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;
.super Ljava/lang/Object;
.source "RepeatedSecretKeySpec.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private algorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;->algorithm:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method
