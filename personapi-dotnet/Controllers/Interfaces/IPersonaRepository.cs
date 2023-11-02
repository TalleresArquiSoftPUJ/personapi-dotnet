using personapi_dotnet.Models.Entities;

public interface IPersonaRepository
{
	IEnumerable<Persona> GetAll();
	Persona? GetById(int id);
	void Add(Persona persona);
	void Update(Persona persona);
	void Delete(int id);
}
