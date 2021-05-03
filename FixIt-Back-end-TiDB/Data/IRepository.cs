using System.Collections.Generic;
using System.Threading.Tasks;
using fixit.DTO;

namespace fixit.Data
{
    public interface IRepository<T>
    {
        Task<List<T>> GetData();
        Task<T> GetDataById(int id);

        Task<T> InsertData(T service);
        Task<T> UpdateData(T service);
        Task<bool> DeleteData(T service);

    }
}