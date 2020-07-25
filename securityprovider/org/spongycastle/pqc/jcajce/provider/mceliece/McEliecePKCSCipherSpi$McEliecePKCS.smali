.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS;
.super Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;
.source "McEliecePKCSCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "McEliecePKCS"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;

    invoke-direct {v0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;-><init>(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCipher;)V

    .line 118
    return-void
.end method
