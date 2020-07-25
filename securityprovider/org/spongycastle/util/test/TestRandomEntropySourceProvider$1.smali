.class Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;
.super Ljava/lang/Object;
.source "TestRandomEntropySourceProvider.java"

# interfaces
.implements Lorg/spongycastle/crypto/prng/EntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->get(I)Lorg/spongycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method constructor <init>(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    .prologue
    .line 38
    iput-object p1, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    iput p2, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    .prologue
    .line 46
    iget v1, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 47
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {v1}, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->access$100(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 48
    return-object v0
.end method

.method public isPredictionResistant()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider$1;->this$0:Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;

    invoke-static {v0}, Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;->access$000(Lorg/spongycastle/util/test/TestRandomEntropySourceProvider;)Z

    move-result v0

    return v0
.end method
