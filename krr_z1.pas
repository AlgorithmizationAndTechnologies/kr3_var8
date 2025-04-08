type 
  TBooks = record
    surname: string;
    name: string;
    year: integer;
    publishing: string;
    end;
  
var
  BooksArray: array [1..6] of TBooks;
  i, j, currentCount, maxCount: integer;
  maxPublish: string;
  
 
begin
  BooksArray[1].surname := 'Попов';
  BooksArray[1].name := 'Бум';
  BooksArray[1].year := 1978;
  BooksArray[1].publishing := 'АСТ';
  
  BooksArray[2].surname := 'Сидоров';
  BooksArray[2].name := 'Оп';
  BooksArray[2].year := 1990;
  BooksArray[2].publishing := 'Комильфо';
  
  BooksArray[3].surname := 'Кузнецов';
  BooksArray[3].name := 'Ап';
  BooksArray[3].year := 2020;
  BooksArray[3].publishing := 'Комильфо';
  
  BooksArray[4].surname := 'Алексеев';
  BooksArray[4].name := 'Бам';
  BooksArray[4].year := 2010;
  BooksArray[4].publishing := 'ЦИК';
  
  BooksArray[5].surname := 'Михайлова';
  BooksArray[5].name := 'Бим';
  BooksArray[5].year := 2001;
  BooksArray[5].publishing := 'АСТ';
  
  BooksArray[6].surname := 'Иванов';
  BooksArray[6].name := 'Фу';
  BooksArray[6].year := 1999;
  BooksArray[6].publishing := 'Комильфо';
  
  currentCount := 0;
  maxCount := 0;
  for i := 1 to 6 do
    begin
      currentCount := 0;
      for j := 1 to 6 do
        if BooksArray[j].publishing = BooksArray[i].publishing then
          currentCount := currentCount + 1;

        if currentCount > maxCount then
          begin
            maxCount := currentCount;
            maxPublish := BooksArray[i].publishing;
          end;
    end;
  writeln('Издательство, выпустившее  больше всего книг:');
  writeln(maxPublish);
  writeln('Кол-во книг:');
  writeln(maxCount);
end.