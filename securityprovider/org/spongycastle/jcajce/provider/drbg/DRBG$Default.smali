.class public Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;
.super Ljava/security/SecureRandomSpi;
.source "DRBG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/drbg/DRBG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field private static final random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/jcajce/provider/drbg/DRBG;->access$100(Z)Ljava/security/SecureRandom;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/security/SecureRandomSpi;-><init>()V

    .line 144
    return-void
.end method


# virtual methods
.method protected engineGenerateSeed(I)[B
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 158
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineNextBytes([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 153
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 154
    return-void
.end method

.method protected engineSetSeed([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 148
    sget-object v0, Lorg/spongycastle/jcajce/provider/drbg/DRBG$Default;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 149
    return-void
.end method
