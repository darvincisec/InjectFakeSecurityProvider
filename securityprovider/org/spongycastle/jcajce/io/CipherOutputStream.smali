.class public Lorg/spongycastle/jcajce/io/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private final cipher:Ljavax/crypto/Cipher;

.field private final oneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .locals 1
    .param p1, "output"    # Ljava/io/OutputStream;
    .param p2, "cipher"    # Ljavax/crypto/Cipher;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    .line 41
    iput-object p2, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "error":Ljava/io/IOException;
    :try_start_0
    iget-object v3, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v2

    .line 115
    .local v2, "outData":[B
    if-eqz v2, :cond_0

    .line 117
    iget-object v3, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    .end local v2    # "outData":[B
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/io/CipherOutputStream;->flush()V

    .line 131
    iget-object v3, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 141
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 143
    throw v1

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;

    .end local v1    # "error":Ljava/io/IOException;
    const-string v3, "Error during cipher finalisation"

    invoke-direct {v1, v3, v0}, Lorg/spongycastle/crypto/io/InvalidCipherTextIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .restart local v1    # "error":Ljava/io/IOException;
    goto :goto_0

    .line 124
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    .end local v1    # "error":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "error":Ljava/io/IOException;
    goto :goto_0

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 136
    .local v0, "e":Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 138
    move-object v1, v0

    goto :goto_1

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 91
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 54
    iget-object v0, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->oneByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/jcajce/io/CipherOutputStream;->write([BII)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 70
    .local v0, "outData":[B
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lorg/spongycastle/jcajce/io/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 74
    :cond_0
    return-void
.end method
