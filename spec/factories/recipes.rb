FactoryGirl.define do
  factory :recipe do
    name "Pasta"
    cookery "Italian"
    kind_meal "Lunch"
    preference "Oq é isso:"
    serve 2
    time 45
    difficulty "Easy"
    ingredients "Pasta"
    step_by_step "Teste teste teste teste teste"
  end
end
