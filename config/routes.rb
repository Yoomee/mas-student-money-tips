MasStudentMoneyTips::Application.routes.draw do
  
  scope "/:locale", :locale => /en|cy/ do
    mount StudentMoneyTips::Engine => "/student_money_tips"
  end
  
  root :to => redirect('/en/student_money_tips/scenarios')
  
end
