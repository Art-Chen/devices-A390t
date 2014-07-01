.class Lcom/android/internal/telephony/cat/EventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[Lcom/android/internal/telephony/cat/AppInterface$EventListType;)V
    .locals 0
    .parameter "cmdDet"
    .parameter "list"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 210
    iput-object p2, p0, Lcom/android/internal/telephony/cat/EventListParams;->eventList:[Lcom/android/internal/telephony/cat/AppInterface$EventListType;

    .line 211
    return-void
.end method
