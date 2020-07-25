.class Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;
.super Ljavax/crypto/BadPaddingException;
.source "CipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;->getOutput()[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;

.field final synthetic val$e:Lorg/spongycastle/crypto/InvalidCipherTextException;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;Ljava/lang/String;Lorg/spongycastle/crypto/InvalidCipherTextException;)V
    .locals 0
    .param p1, "this$0"    # Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;->this$0:Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi;

    iput-object p3, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;->val$e:Lorg/spongycastle/crypto/InvalidCipherTextException;

    invoke-direct {p0, p2}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/CipherSpi$1;->val$e:Lorg/spongycastle/crypto/InvalidCipherTextException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
