﻿namespace DataAccess.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class category
    {
        [Key]
        [Display(Name = "Id")]
        public int cate_id { get; set; }

        [Display(Name = "Thể loại")]
        [Required(ErrorMessage = "Vui lòng không để trống tên thể loại!")]
        public string cate_name { get; set; }
    }
}
