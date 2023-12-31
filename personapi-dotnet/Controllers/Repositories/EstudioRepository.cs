using personapi_dotnet.Models.Entities;

public class EstudioRepository : IEstudioRepository
{
    private readonly PersonaDbContext _context;

    public EstudioRepository(PersonaDbContext context)
    {
        _context = context;
    }

    public IEnumerable<Estudio> GetAll()
    {
        return _context.Estudios.ToList();
    }

    public Estudio? GetById(int ccPer, int idProf)
    {
        var estudio = _context.Estudios.FirstOrDefault(e => e.CcPer == ccPer && e.IdProf == idProf);
        if (estudio != null) { 
            return estudio;
        }
        return null;
    }

    public void Add(Estudio estudio)
    {
        _context.Estudios.Add(estudio);
        _context.SaveChanges();
    }

    public void Update(Estudio estudio)
    {
        _context.Estudios.Update(estudio);
        _context.SaveChanges();
    }

    public void Delete(int ccPer, int idProf)
    {
        var estudio = _context.Estudios.FirstOrDefault(e => e.CcPer == ccPer && e.IdProf == idProf);
        if (estudio != null)
        {
            _context.Estudios.Remove(estudio);
            _context.SaveChanges();
        }
    }
}