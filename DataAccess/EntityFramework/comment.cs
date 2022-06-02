namespace DataAccess.EntityFramework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class comment
    {
        [Key]
        [Display (Name ="Id")]
        public int cmt_id { get; set; }
        [Display(Name = "Email")]
        public string email { get; set; }
        [Display(Name = "Mã bài viết")]
        public int? article_id { get; set; }
        [Display(Name = "Nội dung")]
        public string cmt_cotnent { get; set; }
        [Display(Name = "Ngày comment")]
        public DateTime? create_time { get; set; }
    }
}
