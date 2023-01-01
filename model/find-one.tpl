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
func (m *default{{.upperStartCamelObject}}Model) FindAll(ctx context.Context, data *entity.{{.upperStartCamelObject}}, orderBy string, isDesc bool) ([]*entity.{{.upperStartCamelObject}}, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}

    {{.ifFields}}

    orderCol, ok := {{.lowerStartCamelObject}}.GetFieldByName(orderBy) // maybe orderColStr == "id"
    if !ok {
    	return nil, NotContainsOrderColStrErr
   	}
   	if isDesc {
    	{{.lowerStartCamelObject}}Qb = {{.lowerStartCamelObject}}Qb.Order(orderCol.Desc())
   	} else {
   		{{.lowerStartCamelObject}}Qb = {{.lowerStartCamelObject}}Qb.Order(orderCol)
   	}

    resp, err := {{.lowerStartCamelObject}}Qb.Find()
    if err != nil {
    	return nil, err
    }
    return resp, nil
}
func (m *default{{.upperStartCamelObject}}Model) FindPageListByPage(ctx context.Context,data *entity.{{.upperStartCamelObject}}, page, pageSize int, orderBy string, isDesc bool) ([]*entity.{{.upperStartCamelObject}}, int64, error){
    {{.lowerStartCamelObject}} := m.conn.{{.upperStartCamelObject}}
    {{.ifFields}}
     orderCol, ok := {{.lowerStartCamelObject}}.GetFieldByName(orderBy) // maybe orderColStr == "id"
     if !ok {
        return nil,0, NotContainsOrderColStrErr
     }
     if isDesc {
        {{.lowerStartCamelObject}}Qb = {{.lowerStartCamelObject}}Qb.Order(orderCol.Desc())
     } else {
       	{{.lowerStartCamelObject}}Qb = {{.lowerStartCamelObject}}Qb.Order(orderCol)
     }
     resp,count, err := {{.lowerStartCamelObject}}Qb.FindByPage(pagination.GetPageOffset(page, pageSize), pageSize)
    if err != nil {
   		return nil, 0, err
   	}
   	return resp, count, nil
}
