<%@ Page Language="vb" AutoEventWireup="true"  CodeFile="Default.aspx.vb" Inherits="_Default" %>


<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxge" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>       
        Type password:<br />
        <dxe:ASPxTextBox ID="tbPassword" runat="server" Width="170px" ClientInstanceName="Password" Password="True">
        <ValidationSettings SetFocusOnError="true">
            <RequiredField IsRequired="True" />
        </ValidationSettings>
        </dxe:ASPxTextBox>
        <br />
        Confirm password:
        <dxe:ASPxTextBox ID="tbConfirmedPassword" runat="server" Width="170px" ClientInstanceName="ConfirmedPassword" Password="True">
            <ValidationSettings SetFocusOnError="true">
                <RequiredField IsRequired="True" />
            </ValidationSettings>
        </dxe:ASPxTextBox>
        <br />
        <dxe:ASPxLabel ID="lErrorMessageNotEqual" runat="server" Text="Passwords are not equal!" Width="187px"
            ClientInstanceName="ErrorMessageNotEqual" Font-Size="Smaller" ForeColor="Red" ClientVisible="False">
        </dxe:ASPxLabel>
        <dxe:ASPxButton ID="ASPxButton1" runat="server" Text="OK">
        </dxe:ASPxButton>
        <script type="text/javascript">
            function OnValidationCompleted(s, e) {
                if(e.isValid && Password.GetValue() != ConfirmedPassword.GetValue()) {
                    ConfirmedPassword.SetFocus();
                    ErrorMessageNotEqual.SetVisible(true);
                    e.isValid = false;
                } else
                    ErrorMessageNotEqual.SetVisible(false);
            }
        </script>
        <dxge:ASPxGlobalEvents id="ASPxGlobalEvents1" runat="server" OnValidationCompleted="ASPxGlobalEvents1_ValidationCompleted">
            <ClientSideEvents ValidationCompleted="OnValidationCompleted" />
        </dxge:ASPxGlobalEvents></div>
    </form>
</body>
</html>