package model

type Edge struct {
	From string `json:"_from,omitempty"`
	To   string `json:"_to,omitempty"`
	Key  string `json:"_key,omitempty"`
}
