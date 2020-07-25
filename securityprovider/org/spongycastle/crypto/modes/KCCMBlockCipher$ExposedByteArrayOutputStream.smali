.class Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "KCCMBlockCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/modes/KCCMBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposedByteArrayOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/modes/KCCMBlockCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/modes/KCCMBlockCipher;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->this$0:Lorg/spongycastle/crypto/modes/KCCMBlockCipher;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 506
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/KCCMBlockCipher$ExposedByteArrayOutputStream;->buf:[B

    return-object v0
.end method
