func (m *default{{.upperStartCamelObject}}Model) FindOne(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) (*entity.{{.upperStartCamelObject}}, error) {

	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}

	{{.ifFields}}


    resp, err := {{.lowerStartCamelObject}}.WithContext(ctx).Where({{.lowerStartCamelObject}}.{{.UpperStartCamelPrimaryKey}}.Eq({{.lowerStartCamelPrimaryKey}})).Take()
	if err != nil {
		return nil, err
	}
	return resp, nil

}
func (m *default{{.upperStartCamelObject}}Model) FindOneByQuery(ctx context.Context, data *entity.{{.upperStartCamelObject}}) (*entity.{{.upperStartCamelObject}}, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}

    resp, err := {{.lowerStartCamelObject}}Qb.Take()
    if err != nil {
    	return nil, err
    }
    return resp, nil
}