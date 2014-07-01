.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$1;,
        Lcom/android/internal/telephony/cat/AppInterface$NextActionInd;,
        Lcom/android/internal/telephony/cat/AppInterface$EventListType;,
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_CMD_EVENT:Ljava/lang/String; = "android.intent.action.stk.event"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final DEFAULT_CHANNELID:I = 0x1


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onEventResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method
