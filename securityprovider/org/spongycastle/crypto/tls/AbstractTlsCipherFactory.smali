.class public Lorg/spongycastle/crypto/tls/AbstractTlsCipherFactory;
.super Ljava/lang/Object;
.source "AbstractTlsCipherFactory.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipherFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCipher(Lorg/spongycastle/crypto/tls/TlsContext;II)Lorg/spongycastle/crypto/tls/TlsCipher;
    .locals 2
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p2, "encryptionAlgorithm"    # I
    .param p3, "macAlgorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
