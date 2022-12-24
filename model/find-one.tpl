func (m *default{{.upperStartCamelObject}}Model) FindOne(ctx context.Context, {{.lowerStartCamelPrimaryKey}} {{.dataType}}) (*entity.{{.upperStartCamelObject}}, error) {

	{{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}




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
func (m *default{{.upperStartCamelObject}}Model) FindCount(ctx context.Context,  data *entity.{{.upperStartCamelObject}}) (int64, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}
    count, err := {{.lowerStartCamelObject}}Qb.Count()
    if err != nil {
		return 0, err
	}
	return count, nil
}
func (m *default{{.upperStartCamelObject}}Model) FindAll(ctx context.Context, data *entity.{{.upperStartCamelObject}}) ([]*entity.{{.upperStartCamelObject}}, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}

    resp, err := {{.lowerStartCamelObject}}Qb.Find()
    if err != nil {
    	return nil, err
    }
    return resp, nil
}
func (m *default{{.upperStartCamelObject}}Model) FindPageListByIdDESC(ctx context.Context,data *entity.{{.upperStartCamelObject}}, preMinId, pageSize int64) ([]*entity.{{.upperStartCamelObject}}, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}
     resp, err := {{.lowerStartCamelObject}}Qb.Order({{.lowerStartCamelObject}}.{{.UpperStartCamelPrimaryKey}}.Desc()).Find()
    if err != nil {
    	return nil, err
    }
    return resp, nil
}
func (m *default{{.upperStartCamelObject}}Model) FindPageListByIdASC(ctx context.Context,data *entity.{{.upperStartCamelObject}}, preMinId, pageSize int64) ([]*entity.{{.upperStartCamelObject}}, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}
     resp, err := {{.lowerStartCamelObject}}Qb.Find()
    if err != nil {
    	return nil, err
    }
    return resp, nil
}