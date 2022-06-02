namespace DataAccess.EntityFramework
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class WebsiteDbContext : DbContext
    {
        public WebsiteDbContext()
            : base("name=WebsiteDbContext1")
        {
        }

        public virtual DbSet<article> articles { get; set; }
        public virtual DbSet<category> categories { get; set; }
        public virtual DbSet<comment> comments { get; set; }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<UserGroup> UserGroups { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
