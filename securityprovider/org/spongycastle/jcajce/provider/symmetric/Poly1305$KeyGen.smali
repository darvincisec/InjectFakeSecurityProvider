.class public Lorg/spongycastle/jcajce/provider/symmetric/Poly1305$KeyGen;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;
.source "Poly1305.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Poly1305;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "Poly1305"

    const/16 v1, 0x100

    new-instance v2, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;

    invoke-direct {v2}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/spongycastle/crypto/CipherKeyGenerator;)V

    .line 30
    return-void
.end method
