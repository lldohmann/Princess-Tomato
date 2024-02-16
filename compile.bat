REM Automatically generated from Makefile
mkdir -p obj
..\..\..\bin\lcc   -c -o obj\main.o src\main.c
..\..\..\bin\lcc   -c -o obj\Test_Map.o res\Test_Map.c
..\..\..\bin\lcc   -c -o obj\PT_Tiles.o res\PT_Tiles.c
..\..\..\bin\lcc   -c -o obj\PT_PlaceHolder_Cast.o res\PT_PlaceHolder_Cast.c
..\..\..\bin\lcc   -c -o obj\player.o src\player.c
..\..\..\bin\lcc -Wl-y -debug -o obj\PrincessTomato.gb obj\main.o obj\Test_Map.o obj\PT_Tiles.o obj\PT_PlaceHolder_Cast.o obj\player.o
