Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  mount GraphqlPlayground::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
