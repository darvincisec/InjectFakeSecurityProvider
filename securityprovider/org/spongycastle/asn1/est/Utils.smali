.class Lorg/spongycastle/asn1/est/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Lorg/spongycastle/asn1/est/AttrOrOID;)[Lorg/spongycastle/asn1/est/AttrOrOID;
    .locals 3
    .param p0, "ids"    # [Lorg/spongycastle/asn1/est/AttrOrOID;

    .prologue
    const/4 v2, 0x0

    .line 7
    array-length v1, p0

    new-array v0, v1, [Lorg/spongycastle/asn1/est/AttrOrOID;

    .line 9
    .local v0, "tmp":[Lorg/spongycastle/asn1/est/AttrOrOID;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    return-object v0
.end method
