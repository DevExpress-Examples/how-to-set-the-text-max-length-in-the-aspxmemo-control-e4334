﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title>How to set the text max length in the ASPxMemo control</title>
    <script type="text/javascript">
        function memo_OnKeyDown(s, e) {
            if (s.GetText().length >= se.GetNumber())
                if (e.htmlEvent.keyCode > 47 && e.htmlEvent.keyCode < 90)
                    ASPxClientUtils.PreventEventAndBubble(e.htmlEvent);
            // Ctrl + V
            if (e.htmlEvent.keyCode === 86 && e.htmlEvent.ctrlKey)
                CorrectTextWithDelay();
        }
        function memo_OnInit(s, e) {
            var input = memo.GetInputElement();
            if (ASPxClientUtils.opera)
                input.oncontextmenu = function () { return false; };
            else
                input.onpaste = CorrectTextWithDelay;
        }
        function CorrectTextWithDelay() {
            var maxLength = se.GetNumber();
            setTimeout(function () { memo.SetText(memo.GetText().substr(0, maxLength)); }, 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxMemo ID="memo" runat="server" Height="71px" Width="170px">
            <ClientSideEvents KeyDown="memo_OnKeyDown" Init="memo_OnInit" />
        </dx:ASPxMemo>
        <dx:ASPxLabel ID="lbl" runat="server" Text="Max length:"></dx:ASPxLabel>
        <dx:ASPxSpinEdit ID="se" runat="server" ClientInstanceName="se" MinValue="0" MaxValue="255"
            Number="5">
        </dx:ASPxSpinEdit>
    </form>
</body>
</html>
