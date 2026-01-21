using Chopper.Api.Data;
using Chopper.Api.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Chopper.Api.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductsController : ControllerBase
{
    private readonly AppDbContext _db;
    
    public ProductsController(AppDbContext db)
    {
        _db = db;
    }

    [HttpGet]
    public  async Task<ActionResult<List<Product>>> GetAll()
    {
        // Le thread se libère et traite d'autres requêtes
        return await _db.Products.ToListAsync();
    }

    [HttpGet("{id}")]
    public async Task<ActionResult<Product>> GetById(int id)
    {
        var product =  await _db.Products.FindAsync(id);

        if (product == null)
        {
            return NotFound();
        }

        return Ok(product);
    }
}   