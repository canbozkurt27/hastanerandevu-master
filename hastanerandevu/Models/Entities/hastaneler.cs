//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace hastanerandevu.Models.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class hastaneler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public hastaneler()
        {
            this.doktorlar = new HashSet<doktorlar>();
            this.klinikler = new HashSet<klinikler>();
        }
    
        public int HASTANEID { get; set; }
        public int SEHIRID { get; set; }
        public int ILCEID { get; set; }
        public string HASTANEAD { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<doktorlar> doktorlar { get; set; }
        public virtual ilceler ilceler { get; set; }
        public virtual sehirler sehirler { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<klinikler> klinikler { get; set; }
    }
}