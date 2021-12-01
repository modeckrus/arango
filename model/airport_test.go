package model

import (
	"arango/api"
	"encoding/json"
	"testing"
)

func TestAirport_FromProtoI(t *testing.T) {
	type fields struct {
		Code        string
		Name        Trs
		City        Trs
		Country     Trs
		CountryCode string
	}
	type args struct {
		i *api.AirportI
	}
	name := make(Trs)
	name["en"] = "She"
	name["ru"] = "Шер"
	city := make(Trs)
	city["en"] = "She"
	city["ru"] = "Шер"
	country := make(Trs)
	country["en"] = "She"
	country["ru"] = "Шер"
	tests := []struct {
		name   string
		fields fields
		args   args
	}{
		{"default",
			fields{
				Code:        "SVO",
				Name:        name,
				City:        city,
				Country:     country,
				CountryCode: "RU",
			},
			args{
				&api.AirportI{
					Code: "SVO",
					Name: &api.Trs{
						Trs: []*api.Tr{
							{
								Lang: "ru",
								Text: "Шер",
							},
							{
								Lang: "en",
								Text: "She",
							},
						},
					},
					City: &api.Trs{
						Trs: []*api.Tr{
							{
								Lang: "ru",
								Text: "Шер",
							},
							{
								Lang: "en",
								Text: "She",
							},
						},
					},
					Country: &api.Trs{
						Trs: []*api.Tr{
							{
								Lang: "ru",
								Text: "Шер",
							},
							{
								Lang: "en",
								Text: "She",
							},
						},
					},
					CountryCode: "RU",
				},
			},
		},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			s := Airport{
				Code:        tt.fields.Code,
				Name:        tt.fields.Name,
				City:        tt.fields.City,
				Country:     tt.fields.Country,
				CountryCode: tt.fields.CountryCode,
			}
			new := NewAirport()
			new.FromProtoI(tt.args.i)
			sB, err := json.Marshal(s)
			if err != nil {
				t.Error(err)
			}
			newB, err := json.Marshal(new)
			if err != nil {
				t.Error(err)
			}
			if string(sB) != string(newB) {
				t.Errorf("not equal: S(%v)\nNew(%v)", string(sB), string(newB))
			}
		})
	}
}
