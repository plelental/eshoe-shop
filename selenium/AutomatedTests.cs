using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Interactions;
using Xunit;

namespace Selenium
{
    public class AutomatedTests : IDisposable
    {
        private IWebDriver Driver { get; }

        public AutomatedTests()
        {
            var fireFoxOptions = new FirefoxOptions {AcceptInsecureCertificates = true};
            Driver = new FirefoxDriver(fireFoxOptions);

            // If you want run automated test by chrome uncomment these lines and add required import
            
            // var chromeOptions = new ChromeOptions { AcceptInsecureCertificates = true};
            // Driver = new ChromeDriver(chromeOptions);
        }

        public void Dispose()
        {
            Driver.Quit();
        }

        [Fact]
        public void TestShopProcess()
        {
            //Setting up and open the page
            Driver.Navigate().GoToUrl("https://localhost/");
            Driver.Manage().Window.Size = new System.Drawing.Size(1440, 699);

            //Add products to the cart
            Driver.FindElement(By.CssSelector("#category-13 > .dropdown-item")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(1) img")).Click();
            Driver.FindElement(By.CssSelector(".touchspin-up")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();

            var popupElement = Driver.FindElement(By.CssSelector(".btn-primary > .material-icons"));
            var popupElementBuilder = new Actions(Driver);
            popupElementBuilder.MoveToElement(popupElement).Perform();

            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(2) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(3) img")).Click();
            Driver.FindElement(By.CssSelector(".touchspin-up")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(4) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(5) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();

            var addToCartElement = Driver.FindElement(By.CssSelector(".add-to-cart"));
            var addToCartBuilder = new Actions(Driver);
            addToCartBuilder.MoveToElement(addToCartElement).Perform();

            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(6) img")).Click();
            Driver.FindElement(By.CssSelector(".touchspin-up")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("#category-17 > .dropdown-item")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(1) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(2) img")).Click();
            Driver.FindElement(By.CssSelector(".touchspin-up")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(4) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();
            Driver.FindElement(By.CssSelector("li:nth-child(2) > a > span")).Click();
            Driver.FindElement(By.CssSelector(".product-miniature:nth-child(6) img")).Click();
            Driver.FindElement(By.CssSelector(".add-to-cart")).Click();
            Driver.FindElement(By.CssSelector(".btn.btn-primary.add-to-cart")).Click();

            //Go to cart, remove one item and go to finalization of shopping
            Driver.FindElement(By.CssSelector(".header .hidden-sm-down")).Click();
            Driver.FindElement(By.CssSelector(".cart-container > .card-block")).Click();
            Driver.FindElement(By.CssSelector(".cart-item:nth-child(1) .col-md-2 .material-icons")).Click();
            Driver.FindElement(By.CssSelector(".text-sm-center > .btn")).Click();

            // Fill register form
            Driver.FindElement(By.Name("id_gender")).Click();
            Driver.FindElement(By.Name("firstname")).Click();
            Driver.FindElement(By.Name("firstname")).SendKeys("Jan");
            Driver.FindElement(By.Name("lastname")).SendKeys("Janek");

            var rnd = new Random();
            var rndNumber = rnd.Next(1000);

            Driver.FindElement(By.Name("email")).SendKeys($"janek{rndNumber}@jan.pl");
            Driver.FindElement(By.Name("password")).Click();
            Driver.FindElement(By.Name("password")).Click();
            Driver.FindElement(By.Name("password")).SendKeys("haslo");
            Driver.FindElement(By.Name("psgdpr")).Click();
            Driver.FindElement(By.Name("continue")).Click();

            //Fill delivery address
            Driver.FindElement(By.Name("address1")).Click();
            Driver.FindElement(By.Name("address1")).SendKeys("janowo 1");
            Driver.FindElement(By.Name("postcode")).SendKeys("00-000");
            Driver.FindElement(By.Name("city")).Click();
            Driver.FindElement(By.Name("city")).SendKeys("Jankow");
            Driver.FindElement(By.Name("confirm-addresses")).Click();

            //Choose delivery and payment option
            Driver.FindElement(By.Id("delivery_option_12")).Click();
            Driver.FindElement(By.Name("confirmDeliveryOption")).Click();
            Driver.FindElement(By.CssSelector("#payment-option-1-container > label > span")).Click();
            Driver.FindElement(By.Id("conditions_to_approve[terms-and-conditions]")).Click();
            Driver.FindElement(By.CssSelector(".ps-shown-by-js > .btn")).Click();

            //Go to profile and check details of the ortder
            Driver.FindElement(By.CssSelector(".account > .hidden-sm-down")).Click();
            Driver.FindElement(By.CssSelector("#history-link .material-icons")).Click();
            Driver.FindElement(By.LinkText("Szczegóły")).Click();
        }
    }
}