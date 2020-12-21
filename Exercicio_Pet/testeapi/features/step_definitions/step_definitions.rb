Dado('que chame a api post para criar um usuário') do

    @body = {
        "id" => 1,
        "username" => "MariaAss",
        "firstName" => "Maria",
        "lastName" => "Assuncao",
        "email" => "maria.ass@mailinator.com",
        "password" => "123456",
        "phone" => "11988121414",
        "userStatus" => 1
    }.to_json
        
    @postUser = RegisterService.post CONFIG['url_default']['user'],
    :body => @body,
    :headers => {"Content-Type" => 'application/json'}

    expect(@postUser.code).to eq 200

    log "Request: #{@postUser.request.last_uri.to_s}"
    log @postUser.code
end

Dado('chame a api post para criar um pet') do
    
    @body = {
        "id": 2,
        "category": {
            "id": 2,
            "name": "Cachorro"
        },
        "name": "Brutus",
        "photoUrls": [
            "string"
        ],
        "tags": [
         {
            "id": 2,
            "name": "Brutus"
         }
        ],
        "status": "available"
    }.to_json
    
    @postPet = RegisterService.post CONFIG['url_default']['pet'],
    :body => @body,
    :headers => {"Content-Type" => 'application/json'}

    expect(@postPet.code).to eq 200

    log "Request: #{@postPet.request.last_uri.to_s}"
    log @postPet.code
    log "name :        #{@postPet["name"]}"
end

Quando('realizar a venda do pet para o usuário') do

    @body = {
        "id": 1,
        "petId": 2,
        "quantity": 1,
        "shipDate": "2020-12-20T16:46:01.467+0000",
        "status": "delivered",
        "complete": true
      }.to_json
        
    @postStore = RegisterService.post CONFIG['url_default']['store'],
    :body => @body,
    :headers => {"Content-Type" => 'application/json'}

    expect(@postStore.code).to eq 200

    log "Request: #{@postStore.request.last_uri.to_s}"
    log @postUser.code
    log "status :        #{@postStore["status"]}"
end

Então('chamo a api get para validar se está correto') do
    @consulta = RegisterService.get CONFIG['url_default']['store'] + "/1"
    log "Request: #{@consulta.request.last_uri.to_s}"
    
    expect(@consulta.code).to eq 200

    log @consulta.code
    log @consulta.body
end



