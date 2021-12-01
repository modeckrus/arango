package model

import "arango/api"

type Airport struct {
	Code        string `json:"_key,omitempty"`
	Name        Trs    `json:"name"`
	City        Trs    `json:"city"`
	Country     Trs    `json:"country"`
	CountryCode string `json:"country_code"`
}

type Airports []Airport

func (s Airports) ToProto(l string) *api.AirportListR {
	items := []*api.AirportItem{}
	for _, airport := range s {
		items = append(items, &api.AirportItem{
			Code:    airport.Code,
			Name:    airport.Name.ToString(l),
			City:    airport.City.ToString(l),
			Country: airport.Country.ToString(l),
		})
	}
	return &api.AirportListR{
		Items: items,
	}
}

func NewAirport() Airport {
	return Airport{
		Name:    make(Trs),
		City:    make(Trs),
		Country: make(Trs),
	}
}
func (s *Airport) FromProtoI(i *api.AirportI) {
	s.Code = i.Code
	s.Name = TrsFromProto(i.Name)
	s.City = TrsFromProto(i.City)
	s.Country = TrsFromProto(i.Country)
	s.CountryCode = i.CountryCode
}

func (s Airport) ToProtoM() *api.AirportMR {
	return &api.AirportMR{
		Code:        s.Code,
		Name:        s.Name.ToProto(),
		City:        s.City.ToProto(),
		Country:     s.Country.ToProto(),
		CountryCode: s.CountryCode,
	}
}
func (s Airport) ToProtoU(l string) *api.AirportUR {
	return &api.AirportUR{
		Code:        s.Code,
		Name:        s.Name.ToString(l),
		City:        s.City.ToString(l),
		Country:     s.Country.ToString(l),
		CountryCode: s.CountryCode,
	}
}
