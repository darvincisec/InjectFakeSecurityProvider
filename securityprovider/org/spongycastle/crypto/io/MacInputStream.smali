.class public Lorg/spongycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;
.source "MacInputStream.java"


# instance fields
.field protected mac:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Mac;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "mac"    # Lorg/spongycastle/crypto/Mac;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 19
    iput-object p2, p0, Lorg/spongycastle/crypto/io/MacInputStream;->mac:Lorg/spongycastle/crypto/Mac;

    .line 20
    return-void
.end method


# virtual methods
.method public getMac()Lorg/spongycastle/crypto/Mac;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/io/MacInputStream;->mac:Lorg/spongycastle/crypto/Mac;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    iget-object v1, p0, Lorg/spongycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 27
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 29
    iget-object v1, p0, Lorg/spongycastle/crypto/io/MacInputStream;->mac:Lorg/spongycastle/crypto/Mac;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/Mac;->update(B)V

    .line 31
    :cond_0
    return v0
.end method

.method public read([BII)I
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
    .line 40
    iget-object v1, p0, Lorg/spongycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 41
    .local v0, "n":I
    if-ltz v0, :cond_0

    .line 43
    iget-object v1, p0, Lorg/spongycastle/crypto/io/MacInputStream;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v1, p1, p2, v0}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 45
    :cond_0
    return v0
.end method
