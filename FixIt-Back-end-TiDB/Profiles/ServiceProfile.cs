using AutoMapper;
using fixit.DTO;
using fixit.Models;

namespace fixit.Profiles
{
    public class ServiceProfile : Profile
    {
        public ServiceProfile()
        {
            CreateMap<fixit.Models.Service, ServiceDto>()
            .ForMember(dest => dest.ServiceId, opt => opt.MapFrom(src => src.ServiceId))
            .ForMember(dest => dest.ServiceName, opt => opt.MapFrom(src => src.ServiceName))
            .ForMember(dest => dest.Description, opt => opt.MapFrom(src => src.Description))
            .ForMember(dest => dest.Category, opt => opt.MapFrom(src => src.Category))
            .ForMember(dest => dest.InitialPrice, opt => opt.MapFrom(src => src.InitialPrice))
            .ForMember(dest => dest.IntermediatePrice, opt => opt.MapFrom(src => src.IntermediatePrice))
            .ForMember(dest => dest.AdvancedPrice, opt => opt.MapFrom(src => src.AdvancedPrice))
            .ForMember(dest => dest.AddedTime, opt => opt.MapFrom(src => src.AddedTime));
           CreateMap<ServiceDto, fixit.Models.Service>();

    
    
    
 }

    }
}