system "mkdir -p export"
system "rm -rf export/*"
system "wget -O export/widget.html http://localhost:3000/en/student_money_tips/embed"
system "wget -O export/results.html http://localhost:3000/en/student_money_tips/results"

%w{widget results}.each do |file|
  path = "export/#{file}.html"
  html = File.read(path)
  html.sub!("/assets/","http://mas-student-money-tips.herokuapp.com/assets/")
  html.sub!("/en/student_money_tips/embed","widget.html")
  html.sub!("/en/student_money_tips/results","results.html")
  File.open(path,'w'){|f| f.puts html}
end