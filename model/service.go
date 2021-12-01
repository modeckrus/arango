package model

import "arango/api"

type Service struct {
	Id          string
	Name        Trs
	Description Trs
}
type ServiceList []Service

func (s ServiceList) ToProto(l string) *api.ServiceListR {
	items := []*api.ServiceItem{}
	for _, t := range s {
		items = append(items, &api.ServiceItem{
			Id:   t.Id,
			Name: t.Name.ToString(l),
		})
	}
	return &api.ServiceListR{
		Items: items,
	}
}
func NewService() Service {
	return Service{}
}
func (s *Service) FromProto(i *api.ServiceUpdateI) {
	s.Id = i.Id
	s.Name = TrsFromProto(i.Name)
	s.Description = TrsFromProto(i.Description)
}
func (s Service) ToProto() *api.ServiceMR {
	return &api.ServiceMR{
		Id:          s.Id,
		Name:        s.Name.ToProto(),
		Description: s.Description.ToProto(),
	}
}

// type X1 struct {
// 	X2 X3
// 	X4 X5
// 	X6 X7
// }

// type X1List []X1

// func (s X1List) ToProto(l string) *api.X8 {
// 	items := []*api.X9{}
// 	for _, t := range s {
// 		items = append(items, &api.X1Item{
// 			X2: t.X2,
// 			X4: t.X4,
// 			X6: t.X6,
// 		})
// 	}
// 	return &api.X8{
// 		Items: items,
// 	}
// }

// func NewX1() X1 {
// 	return X1{}
// }
// func (s *X1) FromProto(i *api.X10) {
// 	s.X2 = i.X2
// 	s.X4 = X4
// 	s.X6 = X6
// }

// func (s X1) ToProto() *api.X11 {
// 	return &api.X11{
// 		X2:        s.X2,
// 		X4:        s.X4,
// 		X6:        s.X6,
// 	}
// }
