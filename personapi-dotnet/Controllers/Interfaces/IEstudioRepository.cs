using personapi_dotnet.Models.Entities;

public interface IEstudioRepository
{
    IEnumerable<Estudio> GetAll();
    Estudio? GetById(int ccPer, int idProf);
    void Add(Estudio estudio);
    void Update(Estudio estudio);
    void Delete(int ccPer, int idProf);
}