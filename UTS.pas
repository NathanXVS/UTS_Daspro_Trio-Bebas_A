program Strukbelanja;
uses crt;
label
  A;
var
  i, j:integer;
  th: longint;
  b: array[1..100] of string;
  t, h: array[1..100] of longint;
  q: array[1..100] of integer;
  lanjut: string;
  options : char = '0';
begin
  A:
  options := '0';
  lanjut := 'Y';
  while NOT(options >= '1') or NOT(options <= '3') do
  begin
    clrscr;
    writeln('=============================');
    writeln('====Program Struk Belanja====');
    writeln('=============================');
    writeln('| [1] About The Program     |');
    writeln('| [2] Run The Program       |');
    writeln('| [3] Exit Program          |');
    writeln('=============================');
    write(#10,'Select : '); readln(options); 
  end;
  case options of
  '1' :
    begin
      clrscr;
      writeln(#10#10);
      writeln('=====================================================================================================================================');
      writeln('| Program yang dibuat untuk mempermudah perkerjaan seorang kasir agar tidak perlu menghitung barang belanjaan customer secara manual |');
      writeln('=====================================================================================================================================');
      delay(5000);
      goto A;
    end;
  '2' :
    begin
    clrscr;
      while (lanjut = 'Y') or (lanjut = 'y') do
      begin
        writeln('=============================');
        writeln('========Struk Belanja========');
        writeln('#############################');
        writeln;
        while (true) do
        begin
            write('Jumlah barang yang dibeli: ');
            readln(j);
            If j > 0 then
                break
            else 
                writeln('Kamu beli apaan?');
        end;
        writeln;
        writeln('-----------------------------');
        writeln;
        for i:=1 to j do
        begin
            write('Nama barang: ');
            readln(b[i]);
            while (true) do 
            begin
              write('Harga barang: Rp.');
              readln(h[i]);
              if (h[i] > 0) then
              begin
                break;
              end;
            end;
            while (true) do
            begin
              write('Quantity: ');
              readln(q[i]);
              if (q[i] > 0) then
              begin
                break;
              end;
            end;
            t[i]:=h[i]*q[i];
            writeln('========================');
            writeln('Subtotal: Rp.', t[i]);
            writeln('========================');
            writeln;
        end;
        th:=0;
        for i:=1 to j do
        begin
            th:=th+t[i];
        end;
        writeln('###########################');
        writeln('Total harga: Rp.',th);
        writeln('###########################');
        writeln;
        writeln('Terima kasih telah berbelanja di toko kami!');
       while (true) do
        begin
          write('Mau mengulang?[Y/N]: ');
          readln(lanjut);
          if (lanjut = 'N') or (lanjut = 'n') or (lanjut = 'Y') or  (lanjut = 'y') then
          begin
           break;  
          end;
        end;
        if (lanjut = 'N') or (lanjut = 'n') then
        begin
          writeln;
          writeln('-----------------------------');
          writeln('-----------Selesai-----------');
          writeln('-----------------------------');
        end;
      end;
    goto A;
    end;
  '3' :
    begin
      clrscr;
      writeln(#10#10);
      writeln('====================');
      writeln('| Have a nice day! |');
      writeln('====================');
      delay(2000);
    end;
  end;
  clrscr;
end.