package service

import (
	"arango/api"
	"arango/model"
	"arango/storages"
	"context"
)

type AirportService struct {
	AuthService
	Airport storages.AirportI
	api.UnimplementedFileSServer
}

func NewAirportService(auth AuthService, airport storages.AirportI) AirportService {
	return AirportService{
		Airport:     airport,
		AuthService: auth,
	}
}

func (s AirportService) Create(ctx context.Context, i *api.AirportI) (*api.AirportMR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Create")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airport := model.NewAirport()
	airport.FromProtoI(i)
	airport, err = s.Airport.Create(ctx, airport)
	if err != nil {
		return nil, err
	}
	return airport.ToProtoM(), nil
}

func (s AirportService) Update(ctx context.Context, i *api.AirportI) (*api.AirportMR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Update")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airport := model.NewAirport()
	airport.FromProtoI(i)
	airport, err = s.Airport.Update(ctx, airport)
	if err != nil {
		return nil, err
	}
	return airport.ToProtoM(), nil
}

func (s AirportService) Delete(ctx context.Context, i *api.GetByCodeI) (*api.StatusR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Delete")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	err = s.Airport.Delete(ctx, i.Code)
	if err != nil {
		return nil, err
	}
	return &api.StatusR{Ok: true}, nil
}

func (s AirportService) CodeM(ctx context.Context, i *api.GetByCodeI) (*api.AirportMR, error) {
	ctx = model.SignMethod(ctx, "AirportService.CodeM")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airport, err := s.Airport.Code(ctx, i.Code)
	if err != nil {
		return nil, err
	}
	return airport.ToProtoM(), nil
}

func (s AirportService) CodeU(ctx context.Context, i *api.GetByCodeI) (*api.AirportUR, error) {
	ctx = model.SignMethod(ctx, "AirportService.CodeU")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airport, err := s.Airport.Code(ctx, i.Code)
	if err != nil {
		return nil, err
	}
	return airport.ToProtoU(i.Auth.Locale), nil
}

func (s AirportService) Search(ctx context.Context, i *api.SearchI) (*api.AirportListR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Search")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	search := model.SearchI{}
	search.FromProto(i)
	airports, err := s.Airport.Search(ctx, search)
	if err != nil {
		return nil, err
	}
	return airports.ToProto(i.Auth.Locale), nil
}

func (s AirportService) Service(ctx context.Context, i *api.GetByIdI) (*api.AirportListR, error) {
	ctx = model.SignMethod(ctx, "AirportService.Service")
	ctx, err := s.Auth(ctx, i.Auth, model.UserLevel_Moderator)
	if err != nil {
		return nil, err
	}
	airports, err := s.Airport.Service(ctx, i.Id)
	if err != nil {
		return nil, err
	}
	return airports.ToProto(i.Auth.Locale), nil
}
