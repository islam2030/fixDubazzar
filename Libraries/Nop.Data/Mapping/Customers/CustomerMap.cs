using Nop.Core.Domain.Customers;

namespace Nop.Data.Mapping.Customers
{
    /// <summary>
    /// Mapping class
    /// </summary>
    public partial class CustomerMap : NopEntityTypeConfiguration<Customer>
    {
        /// <summary>
        /// Ctor
        /// </summary>
        public CustomerMap()
        {
            this.ToTable("Customer");
            this.HasKey(c => c.Id);
            this.Property(u => u.Username).HasMaxLength(1000);
            this.Property(u => u.Email).HasMaxLength(1000);
            this.Property(u => u.EmailToRevalidate).HasMaxLength(1000);
            this.Property(u => u.SystemName).HasMaxLength(400);
            
            this.HasMany(c => c.CustomerRoles)
                .WithMany()
                .Map(m => m.ToTable("Customer_CustomerRole_Mapping"));

            this.HasMany(c => c.Addresses)
                .WithMany()
                .Map(m => m.ToTable("CustomerAddresses"));
            this.HasMany(c => c.Buckets)
               .WithMany()
               .Map(m => m.ToTable("Customer_Bucket"));
            this.HasMany(c => c.Contributions)
               .WithMany()
               .Map(m => m.ToTable("Customer_Contribution"));
            this.HasOptional(c => c.BillingAddress);
            this.HasOptional(c => c.ShippingAddress);
        }
    }
}