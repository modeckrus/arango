package model

import "arango/api"

//Defalt Lang
const DL = "en"

type Trs map[string]string

func (s Trs) ToProto() *api.Trs {
	trs := []*api.Tr{}
	for lang, text := range s {
		trs = append(trs, &api.Tr{
			Lang: lang,
			Text: text,
		})
	}
	return &api.Trs{
		Trs: trs,
	}
}
func (s Trs) ToString(l string) string {
	str, ok := s[l]
	if !ok {
		str, _ = s[DL]
	}
	return str
}

func TrsFromProto(i *api.Trs) (s Trs) {
	s = make(map[string]string)
	for _, tr := range i.Trs {
		s[tr.Lang] = tr.Text
	}
	return
}

// type Tr struct {
// 	Lang string
// 	Text string
// }

// type Trs []Tr

// func (i Trs) MarshalJSON() ([]byte, error) {
// 	str := "{"
// 	for _, v := range i {
// 		lang := v.Lang
// 		lang = strings.ReplaceAll(lang, "\"", "\\\"")
// 		lang = strings.ToLower(lang)
// 		text := v.Text
// 		text = strings.ReplaceAll(text, "\"", "\\\"")
// 		str += fmt.Sprintf("\"%v\":\"%v\",", lang, text)
// 	}
// 	str = strings.TrimRight(str, ",")
// 	str += "}"
// 	return []byte(str), nil
// }
// func (i Trs) UnmarshalJSON(data []byte) error {
// 	m := make(map[string]string)
// 	json.Unmarshal(data, &m)
// 	for lang, text := range m {
// 		i = append(i, Tr{
// 			Lang: lang,
// 			Text: text,
// 		})
// 	}
// 	return nil
// }
