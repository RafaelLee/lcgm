json.array!(@cadastros) do |cadastro|
  json.extract! cadastro, :id, :dateC, :name, :proced, :hd, :obs, :dateE, :volume, :concent, :number, :local
  json.url cadastro_url(cadastro, format: :json)
end
