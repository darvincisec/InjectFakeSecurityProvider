.class public Lorg/spongycastle/crypto/OutputLengthException;
.super Lorg/spongycastle/crypto/DataLengthException;
.source "OutputLengthException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
