Rails.application.config.middleware.use OmniAuth::Builder do
  provider :doit, '4d7223b3194f9951ca000334', '782ea311e9b4b76e35020cc7ddc29898f8a9d10cf514fd70809e267b38d0dee0'
end