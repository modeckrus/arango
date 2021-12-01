package service

import (
	"arango/api"
	"arango/model"
	"arango/storages"
	"context"
)

type ServiceService struct {
	AuthService
	Service storages.ServiceI
	api.UnimplementedFileSServer
}

func NewServiceService(auth AuthService, service storages.ServiceI) ServiceService {
	return ServiceService{
		Service:     service,
		AuthService: auth,
	}
}
func (s ServiceService) Create(ctx context.Context, i *api.ServiceCreateI) (*api.ServiceMR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Create")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airport := model.NewService()
	airport.FromProtoI(i)
	airport, err = s.Service.Create(ctx, airport)
	if err != nil {
		return nil, err
	}
	return airport.ToProtoM(), nil
}

func (s ServiceService) Update(ctx context.Context, i *api.ServiceUpdateI) (*api.ServiceMR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) Delete(ctx context.Context, i *api.GetByIdI) (*api.StatusR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) IdM(ctx context.Context, i *api.GetByIdI) (*api.ServiceMR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) IdU(ctx context.Context, i *api.GetByIdI) (*api.ServiceUR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) Search(ctx context.Context, i *api.SearchI) (*api.ServiceListR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) Airport(ctx context.Context, i *api.GetByCodeI) (*api.ServiceListR, error) {
	panic("not implemented") // TODO: Implement
}

func (s ServiceService) SearchAirport(ctx context.Context, i *api.SearchWithCodeI) (*api.ServiceListR, error) {
	panic("not implemented") // TODO: Implement
}
