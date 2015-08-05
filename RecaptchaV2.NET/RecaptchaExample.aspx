<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecaptchaExample.aspx.cs" Inherits="RecaptchaV2.NET.RecaptchaExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title></title>
  <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
  <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script src='//www.google.com/recaptcha/api.js' async defer></script>
</head>
<body>
  <form id="form1" runat="server">
     <div class="container">
      <div class="form-signin" role="form">
        <div class="panel panel-primary">
          <div class="panel-heading">
            <h3 class="panel-title"><strong>Recaptcha Test </strong></h3>
          </div>
          <div class="panel-body">
            <div class="alert alert-danger" role="alert" runat="server" id="trMsg" visible="false">
              <strong>Error msg placeholder</strong>
            </div>
            <div>
              <div class="form-group" id="googleRecaptcha" runat="server">
                <div class="g-recaptcha" data-sitekey="your_google_site_key"></div>
              </div>
              <asp:Button runat="server" CssClass="btn btn-info btn-block" ID="btnValidateRecaptcha" OnClick="btnValidateRecaptcha_Click" Text="Validate Recaptcha" />
            </div>
          </div>
        </div>
      </div>
      <script type="text/javascript">
        $(document).ready(function () {
          $("input[type=text]").first().focus();
          $(".input-validation-error").first().focus();
        })
      </script>
      <script type="text/javascript">
        if (window.top !== window.self) window.top.location.replace(window.self.location.href);
      </script>
    </div>
  </form>
</body>
</html>
