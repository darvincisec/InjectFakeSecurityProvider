.class public Lorg/spongycastle/jce/spec/RepeatedSecretKeySpec;
.super Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;
.source "RepeatedSecretKeySpec.java"


# instance fields
.field private algorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/spongycastle/jcajce/spec/RepeatedSecretKeySpec;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method
