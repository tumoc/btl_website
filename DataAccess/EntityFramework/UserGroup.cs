

namespace DataAccess.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;
    public partial class UserGroup
    {
        [Key]
        public int ID { get; set; }
        [StringLength(10)]
        public string Name { get; set; }
    }
}
