Rails.application.routes.draw do

  devise_for :users
  root to: 'landing#land'
  get    '/home',           to: 'landing#land'
  get    '/policy/promise', to: 'policy#promise'
  get    '/policy/privacy', to: 'policy#privacy'
  get    '/policy/aup',     to: 'policy#acceptable'

  get    "home/index",         to: 'home#index'
  get    "home/minor",         to: 'home#minor'

  get    "classes/myClasses",  to: 'classes#my_classes'
  get    "classes/class",      to: 'classes#class_details'
  get    "classes/newClass",   to: 'classes#new_class'

  get    "evaluations/myEvaluations",   to: 'evaluations#my_evaluations'
  get    "evaluations/newEvaluation",   to: 'evaluations#new_eval'

  get    "lessons/myLessons",   to: 'lessons#my_lessons'

end
