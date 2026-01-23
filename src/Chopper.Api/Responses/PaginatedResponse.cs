namespace Chopper.Api.Responses;

/// <summary>
/// Réponse paginée générique, réutilisable pour n'importe quelle entité (Product, User, etc.)
/// </summary>
/// <typeparam name="T">Le type d'entité à paginer</typeparam>
public class PaginatedResponse<T>
{
    public List<T> Data { get; set; }       // Les éléments de la page courante
    public int PageNum { get; set; }        // Numéro de la page actuelle (1-indexed)
    public int PageSize { get; set; }       // Nombre d'éléments par page
    public int TotalCount { get; set; }     // Nombre total d'éléments dans la base
    public int TotalPages { get; set; }     // Nombre total de pages

    public PaginatedResponse(List<T> data, int pageNum, int pageSize, int totalCount)
    {
        Data = data;
        PageNum = pageNum;
        PageSize = pageSize;
        TotalCount = totalCount;

        // Arrondi vers le haut pour inclure une page partielle
        // Ex: 52 produits / 10 par page = 6 pages (pas 5)
        TotalPages = (TotalCount + PageSize - 1) / PageSize;
    }
}