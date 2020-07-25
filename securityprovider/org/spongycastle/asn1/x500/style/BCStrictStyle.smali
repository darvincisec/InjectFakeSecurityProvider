.class public Lorg/spongycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/spongycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/spongycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public areEqual(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    .locals 6
    .param p1, "name1"    # Lorg/spongycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v1

    .line 19
    .local v1, "rdns1":[Lorg/spongycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x500/X500Name;->getRDNs()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 21
    .local v2, "rdns2":[Lorg/spongycastle/asn1/x500/RDN;
    array-length v4, v1

    array-length v5, v2

    if-eq v4, v5, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v3

    .line 26
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-eq v0, v4, :cond_2

    .line 28
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 34
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
