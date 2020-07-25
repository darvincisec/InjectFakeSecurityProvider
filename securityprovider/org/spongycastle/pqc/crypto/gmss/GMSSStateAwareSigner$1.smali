.class Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;
.super Ljava/lang/Object;
.source "GMSSStateAwareSigner.java"

# interfaces
.implements Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;-><init>(Lorg/spongycastle/crypto/Digest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;

.field final synthetic val$dig:Lorg/spongycastle/util/Memoable;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;Lorg/spongycastle/util/Memoable;)V
    .locals 0
    .param p1, "this$0"    # Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;

    .prologue
    .line 32
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;->this$0:Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner;

    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/spongycastle/util/Memoable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSStateAwareSigner$1;->val$dig:Lorg/spongycastle/util/Memoable;

    invoke-interface {v0}, Lorg/spongycastle/util/Memoable;->copy()Lorg/spongycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method
