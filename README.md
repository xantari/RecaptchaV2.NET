# RecaptchaV2.NET

Implements a class that allows you to use Googles Recaptcha V2 library with .NET (Webforms or MVC)

Also implements Googles very badly documented Secure Token functionality as sort of defined here: https://developers.google.com/recaptcha/docs/secure_token 

## How to use

  - Download the source code
  - This is a Visual Studio 2015 / .NET 4.6 project, so make sure you are running Visual Studio 2015 or above
  - Open RecaptchaExample.aspx.cs and edit the google_site_key and google_secret_key strings and put in your appropriate   recaptcha 2.0 site key and secret key in all 4 locations
  - Run the project

## Notes

  - This uses the secure token variation of recaptcha by default, not the site specific version. If you wish to use the site specific version then call recaptcha.GetSiteSpecificRecaptchaHTML() function instead.

## Acknowledgements ##

* **ReCaptchaV2.NET** currently support Version 2 only. An existing .NET library is available for version 1.0.
* This project is based off of work from here: [**Aliencube.ReCaptcha.NET**](https://github.com/aliencube/ReCaptcha.NET/) and 
## Releases

  * **2015-08-04** - v1.0 First release
  
