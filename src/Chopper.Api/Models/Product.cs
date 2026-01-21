namespace Chopper.Api.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

[Table("products")]
public class Product
{
    [Column("id")]
    [Key]
    public int Id { get; set; }

    [Column("name")] [Required] public string Name { get; set; } = string.Empty;
    
    [Column("price")]
    [Required]
    public decimal  Price { get; set; }

    [Column("url")] [Required] 
    public string Url { get; set; } = string.Empty;
   

	[Column("image_url")] 
 	[Required] 			
	public string ImageUrl { get; set; } = string.Empty;

    [Column("brand")] [Required] 
	public string Brand { get; set; } = string.Empty;

    [Column("category")] [Required] 
	public string[] Categories { get; set; } = Array.Empty<string>();

    [Column("sizes_available")] [Required] 
	public string[] SizesAvailable { get; set; } = Array.Empty<string>();

    [Column("colors_available")] [Required]
    public string[] ColorsAvailable { get; set; } = Array.Empty<string>();
    
    [Column("styles")]
    [Required]
    public string[] Styles { get; set; } = Array.Empty<string>();
    
    [Column("created_at")]
    public DateTime  CreatedAt { get; set; }
    
    [Column("updated_at")]
    public DateTime   UpdatedAt { get; set; }
    
    
    
}