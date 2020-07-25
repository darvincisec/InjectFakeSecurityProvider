.class public Lorg/spongycastle/jce/spec/IEKeySpec;
.super Ljava/lang/Object;
.source "IEKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;
.implements Lorg/spongycastle/jce/interfaces/IESKey;


# instance fields
.field private privKey:Ljava/security/PrivateKey;

.field private pubKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/PublicKey;)V
    .locals 0
    .param p1, "privKey"    # Ljava/security/PrivateKey;
    .param p2, "pubKey"    # Ljava/security/PublicKey;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    .line 28
    iput-object p2, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    .line 29
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "IES"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrivate()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->privKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getPublic()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/spongycastle/jce/spec/IEKeySpec;->pubKey:Ljava/security/PublicKey;

    return-object v0
.end method
