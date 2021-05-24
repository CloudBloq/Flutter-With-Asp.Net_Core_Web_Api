using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using AutoMapper;
using fixit.Data;
using fixit.DTO;
using Microsoft.AspNetCore.Mvc;
using fixit.Models;

using Microsoft.AspNetCore.Authorization;

namespace Controllers
{


    [ApiController]
    [Route("api/services")]
    public class ServiceController : ControllerBase
    {
        private readonly IRepository<Service> _repo;
        private readonly IMapper _mapper;
        public ServiceController(IRepository<Service> repo, IMapper mapper)
        {
            _repo = repo;
            _mapper = mapper;
        }



        [HttpGet]
        public async Task<IActionResult> GetServices()
        {
            Console.WriteLine("This is the get All service method");

            var model = await _repo.GetData();
           
            return Ok(_mapper.Map<IEnumerable<ServiceDto>>(model));
        
        }

        [HttpGet("{id}")]
        public async Task<IActionResult> GetServiceById(int id)
        {
             Console.WriteLine("This is the comming id ");
            Console.WriteLine(id);
             

            var model = await _repo.GetDataById(id);
            return Ok(_mapper.Map<ServiceDto>(model));
        }
     
     
        //  Service Post method

         [HttpPost]
        public async Task<IActionResult> CreateService(ServiceDto serviceDto)
        {
            Console.WriteLine("Crate Service Method Invoked");
            var service = _mapper.Map<Service>(serviceDto);
            await _repo.UpdateData(service);
            return Ok(serviceDto);
        }
        
        // Service Delete method
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteServices(int id)
        {
            var service = await _repo.GetDataById(id);
            // var service = _mapper.Map<Service>(serviceDto);
            await _repo.DeleteData(service);
            return Ok(_mapper.Map<ServiceDto>(service));

            
        }
    }
}