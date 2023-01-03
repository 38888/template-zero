func (m *default{{.upperStartCamelObject}}Model) FindOneBy{{.upperField}}(ctx context.Context, {{.in}}) (*entity.{{.upperStartCamelObject}}, error) {

    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    resp, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.UpperField}}.Eq({{.in}})).Take()
    if err != nil {
    	return nil, err
    }
    return resp, nil


}
