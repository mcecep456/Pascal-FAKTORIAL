program Menentukan_Faktorial;

{ I.S. : }
{ F.S. : }

uses
    crt;

const
    DataUsername = 'Ade';
    DataPassword = '10117210';

var
    N, Faktorial, Index :integer;
    Mulai               :char;
    Username, Password  :string;

begin

    // Login Form
    window(20, 5, 60, 20); textbackground(blue); clrscr;

    gotoxy(14, 2);
    write('Formulir Login');

    gotoxy(1, 3);
    write('-----------------------------------------');

    gotoxy(2, 5);
    write('Masukan Nama Pengguna : '); readln(Username);

    gotoxy(2, 6);
    write('Masukan Kata Sandi    : '); readln(Password);

    while((Username <> DataUsername) and (Password <> DataPassword)) do
    begin
         textcolor(white);

         gotoxy(2, 8);
         write('Maaf anda salah!');
         readln;

         gotoxy(2, 8); clreol;

         gotoxy(2, 5); clreol;
         gotoxy(2, 6); clreol;

         gotoxy(2, 5); readln(Username);
         gotoxy(2, 6); readln(Password);

    end;

    repeat
    textbackground(black); clrscr;

    // Jendela Pertama
    window(2, 2, 39, 24); textbackground(blue); clrscr;
    textcolor(yellow);

    gotoxy(2, 2);
    write('Masukkan Nilai N : '); readln(N);

    while(N < 0) do
    begin

        textcolor(white);
        gotoxy(2, 4);
        write('Nilai N tidak boleh negatif, Ulangi!');

        gotoxy(2, 5);
        write('Tekan Enter untuk mengulangi');
        readln;

        gotoxy(2, 4); clreol;
        gotoxy(2, 5); clreol;

        textcolor(yellow);
        gotoxy(21, 2); clreol; readln(N);

    end; // End while

    if((N = 0) or (N = 1)) then
        Faktorial := 1
    else
        begin

            Faktorial := N;
            Index := (N - 1);

            while(Index >= 2) do
            begin
                Faktorial := Faktorial * Index;
                Index := Index - 1;
            end;
        end;

    // Jendela Kedua
    window(41, 2, 79, 24); textbackground(blue); clrscr;

    gotoxy(2, 2);
    write('Faktorial ', N, ' = ');
    for Index := N downto 1 do
    begin
       delay(300);
       write(Index);

       if(Index <> 1) then
           begin
              delay(300);
              write('X');
           end;

    end;

    gotoxy(14, 3);
    delay(300);
    write('= ', Faktorial);

    gotoxy(2, 5);
    write('Ingin mencoba lagi [Y / T] : '); readln(Mulai);

    until ((Mulai = 'T') or (Mulai = 't'))

end.
