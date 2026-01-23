using Chopper.Api.Data;
using Chopper.Api.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Chopper.Api.Responses;

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

    /// <summary>
    /// Récupère une liste paginée de produits.
    /// GET /api/products?pageNum=1&pageSize=10
    /// </summary>
    [HttpGet]
    public async Task<ActionResult<PaginatedResponse<Product>>> GetAll(
        [FromQuery] int pageNum = 1,
        [FromQuery] int pageSize = 10)
    {
        // 1. Compter le total (pour calculer le nombre de pages)
        var totalCount = await _db.Products.CountAsync();

        // 2. Récupérer seulement les produits de la page demandée
        //    Skip: saute les produits des pages précédentes
        //    Take: prend seulement pageSize produits
        var products = await _db.Products
            .Skip((pageNum - 1) * pageSize)
            .Take(pageSize)
            .ToListAsync();

        // 3. Construire et retourner la réponse paginée
        var response = new PaginatedResponse<Product>(products, pageNum, pageSize, totalCount);

        return Ok(response);
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