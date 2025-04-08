var
  s: string;
  consonants: set of char;
  wordConsonants: set of char;
  resultConsonants: set of char;
  allConsonants: set of char;
  c: char;
  i: integer;
  
begin
  consonants := ['Б',  'В', 'Г', 'Д', 'Ж', 'З', 'Й', 'К', 'Л', 
                'М', 'Н', 'П', 'Р', 'С', 'Т', 'Ф', 'Х', 'Ц', 'Ч', 'Ш', 'Щ'];
  writeln('Введите слова через пробел:');
  readln(s);
  resultConsonants := [];
  s := s + ' ';
  wordConsonants := [];
  for i := 1 to length(s) do
    begin
      c := upcase(s[i]);
      if c in consonants then
        wordConsonants := wordConsonants + [c]
      else if (c = ' ') and (i > 1) and (s[i - 1] <> ' ') then
        begin
          allConsonants := allConsonants + (resultConsonants * wordConsonants); 
          resultConsonants := resultConsonants + wordConsonants;
          wordConsonants := [];
        end;
    end;
    
  writeln('Согласные, которые входят только в одно слово:');
   for c := 'А' to 'Я' do
    if (c in (resultConsonants - allConsonants)) then 
       writeln(c);
   if resultConsonants = [] then
     writeln('В словах нет согласных букв.');
     
   if (resultConsonants - allConsonants) = [] then
     writeln('Нет согласных, которые встречаются только в одном слове.');
     
end.