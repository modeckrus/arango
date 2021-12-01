package model

import "arango/api"

type SearchI struct {
	Text  *string
	Skip  int64
	Limit int64
}

func (s *SearchI) FromProto(i *api.SearchI) {
	s.Limit = i.Limit
	s.Skip = i.Skip
	s.Text = i.Text
}
