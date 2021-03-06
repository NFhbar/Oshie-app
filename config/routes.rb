Rails.application.routes.draw do

  devise_for :users
  root to: 'landing#land'
  get    '/home',           to: 'landing#land'
  get    '/policy/promise', to: 'policy#promise'
  get    '/policy/privacy', to: 'policy#privacy'
  get    '/policy/aup',     to: 'policy#acceptable'
  get    '/policy/support', to: 'policy#support'
  get    '/policy/terms',   to: 'policy#terms'
  get    '/policy/security',to: 'policy#security'
  get    '/policy/trademark', to: 'policy#trademark'
  get    '/policy/dmca',    to: 'policy#dmca'

  get    "home/index",         to: 'home#index'
  get    "home/minor",         to: 'home#minor'

  get    "classes/myClasses",  to: 'classes#my_classes'
  get    "classes/class",      to: 'classes#class_details'
  get    "classes/newClass",   to: 'classes#new_class'

  get    "evaluations/myEvaluations",   to: 'evaluations#my_evaluations'
  get    "evaluations/newEvaluation",   to: 'evaluations#new_eval'

  get    "lessons/myLessons",   to: 'lessons#my_lessons'
  get    "lessons/lesson",      to: 'lessons#lesson_details'

  get    "calendar/myCalendar", to: 'calendar#my_calendar'

  get    "openschool/content",  to: 'open_school#open_school'

  get    "forum/forums",        to: 'forum#forum_view'

  get    "cognitive/stats",     to: 'cognitive#cognitive_page'

  get    "rewards/myRewards",   to: 'rewards#my_rewards'

  get    "support/help",        to: 'support#help'

end
