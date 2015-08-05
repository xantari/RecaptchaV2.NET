using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RecaptchaV2.NET
{
  public partial class RecaptchaExample : System.Web.UI.Page
  {
    protected void Page_Load(object sender, EventArgs e)
    {
      //Place your site key and secret key here
      Recaptcha recaptcha = new Recaptcha("google_site_key", "google_secret_key");
      googleRecaptcha.InnerHtml = recaptcha.GetSecureTokenHTML();
    }

    protected void btnValidateRecaptcha_Click(object sender, EventArgs e)
    {
      Recaptcha recaptcha = new Recaptcha("google_site_key", "google_secret_key");
      string recaptchaResponse = HttpContext.Current.Request.Form["g-recaptcha-response"];
      RecaptchaValidationResult validationResult = recaptcha.Validate(recaptchaResponse);
      if (validationResult.Succeeded)
      {
        trMsg.Visible = true;
        trMsg.Attributes["class"] = "alert alert-success";
        trMsg.InnerHtml = "Congrats it validated successfully";
      }
      else
      {
        trMsg.Visible = true;
        trMsg.Attributes["class"] = "alert alert-danger";
        trMsg.InnerHtml = "Oops something went wrong. Error detail: " + validationResult.GetErrorMessagesString();
      }
    }
  }
}