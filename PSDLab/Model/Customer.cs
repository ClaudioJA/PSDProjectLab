//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PSDLab.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Customer
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Customer()
        {
            this.TransactionHeaders = new HashSet<TransactionHeader>();
        }
    
        public int customerId { get; set; }
        public string customerName { get; set; }
        public string customerEmail { get; set; }
        public string customerPassword { get; set; }
        public string customerGender { get; set; }
        public string customerAddress { get; set; }
        public string customerRole { get; set; }
    
        public virtual Cart Cart { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TransactionHeader> TransactionHeaders { get; set; }
    }
}
