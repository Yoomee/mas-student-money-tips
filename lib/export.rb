system "mkdir -p export"
system "rm -rf export/*"
system "wget -O export/widget.html http://localhost:3000/en/student_money_tips/embed"
system "wget -O export/results.html http://localhost:3000/en/student_money_tips/results"
system "mkdir export/assets"
system "wget -O export/assets/widget.css http://localhost:3000/assets/student_money_tips/widget.css"

%w{widget results}.each do |file|
  path = "export/#{file}.html"
  html = File.read(path)
  html.sub!("/assets/student_money_tips/","assets/")
  html.sub!("/en/student_money_tips/embed","widget.html")
  html.sub!("/en/student_money_tips/results","results.html")
  File.open(path,'w'){|f| f.puts html}
end