.class public Lorg/spongycastle/crypto/generators/KDF1BytesGenerator;
.super Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;
.source "KDF1BytesGenerator.java"


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/spongycastle/crypto/generators/BaseKDFBytesGenerator;-><init>(ILorg/spongycastle/crypto/Digest;)V

    .line 22
    return-void
.end method
