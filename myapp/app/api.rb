module MyApp
  class Api < Grape::API
    format :json

    get do
      {message: "Hello I'm a bank"}
    end

    #mount ::v1
    #mount ::v2
  end
end