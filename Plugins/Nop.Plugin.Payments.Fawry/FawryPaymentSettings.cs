using Nop.Core.Configuration;
using Nop.Web.Framework.Mvc.ModelBinding;

namespace Nop.Plugin.Payments.Fawry
{
    /// <summary>
    /// Represents settings of the Fawry payment plugin
    /// </summary>
    public class FawryPaymentSettings : ISettings
    {
        /// <summary>
        /// Gets or sets a value indicating whether to use sandbox (testing environment)
        /// </summary>
        public bool UseSandbox { get; set; }

        /// <summary>
        /// Gets or sets a business email
        /// </summary>
        public string BusinessEmail { get; set; }

        /// <summary>
        /// Gets or sets PDT identity token
        /// </summary>
        public string PdtToken { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether to pass info about purchased items to PayPal
        /// </summary>
        public bool PassProductNamesAndTotals { get; set; }

        /// <summary>
        /// Gets or sets an additional fee
        /// </summary>
        public decimal AdditionalFee { get; set; }

        /// <summary>
        /// Gets or sets a value indicating whether to "additional fee" is specified as percentage. true - percentage, false - fixed value.
        /// </summary>
        public bool AdditionalFeePercentage { get; set; }

        //edit here by amal
        public bool PdtValidateOrderTotal { get; set; }
        public bool EnableIpn { get; set; }
        public string IpnUrl { get; set; }
        public bool ReturnFromPayPalWithoutPaymentRedirectsToOrderDetailsPage { get; set; }
        public bool AddressOverride { get; set; }



        //amal 23/9/2018

        public string AdminName { get; set; }
        public string AdminEmail { get; set; }
        public int OrderExpiry { get; set; }






    }
}
